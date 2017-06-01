-injars		R.jar
-outjars	RR.jar
-libraryjars 	"<java_home>/jre/lib/rt.jar"
-printusage
-allowaccessmodification
-overloadaggressively
-keep public class R {
    public static void main(java.lang.String[]);
}

