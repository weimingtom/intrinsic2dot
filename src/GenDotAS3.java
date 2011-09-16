import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.CommonTokenStream;
import org.antlr.runtime.RecognitionException;

public class GenDotAS3 {
    // TODO: Only for TEST
    private static boolean TEST_PRINT = false;
    private static boolean TEST_PRINT_PATH = false;
    private static boolean FILTER_NATIVE_TYPE = true;

    private static String[] NATIVE_TYPES;
    static {
	NATIVE_TYPES = new String[] { "String", "int", "Number", "uint", "int",
		"Object", "Array", "XML", "Boolean", "Class", "Function",
		"Rectangle", "Matrix", "Dictionary", "Point", "Graphics",
		"Sprite", "Movieclip", "Shape", "Bitmap", "BitmapData",
		"BitmapDataChannel", "BlendMode", "BitmapFilter", 
		"DisplayObject", "Event", "Stage", "Loader", "TimerEvent",
		"URLLoader", "ByteArray", "ProgressEvent", 
		"Sound", "SoundTransform", "SoundChannel",
		"TextField", "TextFormat", 
		"KeyboardEvent", "MouseEvent", };
	// TODO: MUST BE SORTED!
	Arrays.sort(NATIVE_TYPES);
	/*
	 * if(Arrays.binarySearch(NATIVE_TYPES, "uint") >= 0) {
	 * System.out.println("=========="); }
	 */
    }

    /**
     * Main Entry
     * 
     * @param args
     */
    public static void main(String[] args) {
	if (args.length < 1) {
	    System.out.println("Usage: GenDotAS3 [path]");
	    return;
	}
	ArrayList fileNames = new ArrayList();
	ListDir(fileNames, /* "test/pv3d/nochump" */args[0]);
	PrintStream out = openOutput("out.dot");
	printDotHead(out);
	Iterator it = fileNames.iterator();
	while (it.hasNext()) {
	    String fileName = (String) it.next();
	    if (TEST_PRINT_PATH) {
		System.out.println(fileName);
	    } else {
		ScanFile(out, fileName);
	    }
	}
	printDotFoot(out);
    }

    private static void ScanFile(PrintStream out, String filename) {
	SimpleAS3Lexer lex;
	try {
	    lex = new SimpleAS3Lexer(new ANTLRFileStream(filename, "UTF8"));
	    CommonTokenStream tokens = new CommonTokenStream(lex);
	    SimpleAS3Parser g = new SimpleAS3Parser(tokens);
	    try {
		g.program();
	    } catch (RecognitionException e) {
		e.printStackTrace();
	    }
	    printDotFromSet(out, g.classname, g.basename, g.interfaces,
		    g.memory);
	} catch (IOException e1) {
	    e1.printStackTrace();
	}
    }

    private static PrintStream openOutput(String fileName) {
	if (!TEST_PRINT) {
	    File dotFile = new File(fileName);
	    try {
		PrintStream out = new PrintStream(new FileOutputStream(dotFile));
		return out;
	    } catch (IOException e2) {
		// TODO Auto-generated catch block
		e2.printStackTrace();
	    }
	}
	return System.out;
    }

    private static void printDotHead(PrintStream out) {
	out.println("digraph android_graphics {\n" + "rankdir=LR; //TB\n"
		+ "\n" + "node[fontname=\"PMingLiu\"]\n"
		+ "edge[fontname=\"PMingLiu\"]\n");
    }

    private static void printDotFoot(PrintStream out) {
	out.println("}");
    }

    private static void printDotFromSet(PrintStream out, String className,
	    String baseName, Set interSet, Set typeSet) {
	if (className == null)
	    return;

	if (baseName != null) {
	    out.println("\"" + baseName + "\" -> \"" + className
		    + "\" [color=\"#ff0000\"]");
	}

	Iterator itInterface = interSet.iterator();
	while (itInterface.hasNext()) {
	    String str = (String) itInterface.next();
	    out.println("\"" + str + "\" -> \"" + className
		    + "\" [color=\"#00ff00\"]");
	}

	Iterator it = typeSet.iterator();
	while (it.hasNext()) {
	    String str = (String) it.next();
	    if (FILTER_NATIVE_TYPE) {
		if (Arrays.binarySearch(NATIVE_TYPES, str) >= 0) {
		    continue;
		}
	    }
	    out.println("\"" + className + "\" -> \"" + str + "\"");
	}
    }

    private static void ListDir(List fileNames, String dirName) {
	ListFiles(fileNames, new File(dirName));
    }

    // TODO: recursive function
    private static void ListFiles(List fileNames, File dir) {
	if (dir == null || !dir.exists() || !dir.isDirectory()) {
	    return;
	}
	// TODO: use getProperty
	String separator = System.getProperty("file.separator");
	String[] files = dir.list();
	for (int i = 0; i < files.length; i++) {
	    File file = new File(dir, files[i]);
	    String fileName = dir + separator + file.getName();
	    if (file.isFile()) {
		// System.out.println(fileName + "\t" + file.length());
		if (fileName != null && fileName.endsWith(".as")) {
		    fileNames.add(fileName);
		}
	    } else {
		// System.out.println(fileName + "\t<dir>");
		ListFiles(fileNames, file);
	    }
	}
    }

    // TODO: test
    private static void printSet(Set s) {
	Iterator it = s.iterator();
	while (it.hasNext()) {
	    String str = (String) it.next();
	    System.out.println(str);
	}
    }
}
