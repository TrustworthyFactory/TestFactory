;; D:/works/security2011/optet/WP4/installKeplerAll/eclipse/configuration/org.eclipse.osgi/bundles/1260/1/.cp/jmlExec/z3.exe /smt2 /in SMTLIB2_COMPLIANT=true 
(set-option :print-success true)
;OUT: success

(set-option :produce-models true)
;OUT: success

(set-logic AUFLIA)
;OUT: success

(declare-sort REF 0)
;OUT: success

(declare-fun NULL () REF)
;OUT: success

(declare-fun THIS () REF)
;OUT: success

(declare-fun stringConcat (REF REF ) REF)
;OUT: success

(declare-fun stringLength (REF ) Int)
;OUT: success

(assert (distinct THIS NULL))
;OUT: success

(declare-fun __JMLlength () (Array REF Int))
;OUT: success

(assert (forall ((o REF) ) (>= (select __JMLlength o) 0)))
;OUT: success

(assert (forall ((s1 REF) (s2 REF) ) (distinct (stringConcat s1 s2) NULL)))
;OUT: success

(declare-fun asIntArray (REF ) (Array Int Int))
;OUT: success

(declare-fun asREFArray (REF ) (Array Int REF))
;OUT: success

(declare-fun intValue (REF ) Int)
;OUT: success

(declare-fun booleanValue (REF ) Bool)
;OUT: success

(declare-sort JMLTypeSort 0)
;OUT: success

(declare-fun javaTypeOf (REF ) REF)
;OUT: success

(declare-fun jmlTypeOf (REF ) JMLTypeSort)
;OUT: success

(declare-fun typearg1_1 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun typearg2_1 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun typearg2_2 (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun javaSubType (REF REF ) Bool)
;OUT: success

(declare-fun jmlSubType (JMLTypeSort JMLTypeSort ) Bool)
;OUT: success

(declare-fun erasure (JMLTypeSort ) REF)
;OUT: success

(assert (forall ((o REF) ) (= (erasure (jmlTypeOf o)) (javaTypeOf o))))
;OUT: success

(declare-fun _makeArrayType (REF ) REF)
;OUT: success

(declare-fun _isArrayType (REF ) Bool)
;OUT: success

(declare-fun _makeJMLArrayType (JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun _isJMLArrayType (JMLTypeSort ) Bool)
;OUT: success

(declare-fun __arrayElemType (JMLTypeSort ) JMLTypeSort)
;OUT: success

(assert (forall ((T JMLTypeSort) ) (= (erasure (_makeJMLArrayType T)) (_makeArrayType (erasure T)))))
;OUT: success

(assert (forall ((T1 JMLTypeSort) (T2 JMLTypeSort) ) (=> (jmlSubType T1 T2) (javaSubType (erasure T1) (erasure T2)))))
;OUT: success

(declare-fun nonnullelements (REF (Array REF (Array Int REF)) ) Bool)
;OUT: success

(assert (forall ((a REF) (arrays (Array REF (Array Int REF))) ) (= (nonnullelements a arrays) (forall ((i Int) ) (=> (and (<= 0 i) (< i (select __JMLlength a))) (distinct NULL (select (select arrays a) i)))))))
;OUT: success

(declare-fun _JMLT_0 (REF ) JMLTypeSort)
;OUT: success

(declare-fun _JMLT_1 (REF JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun _JMLT_2 (REF JMLTypeSort JMLTypeSort ) JMLTypeSort)
;OUT: success

(declare-fun T_java_lang_Comparable () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Comparable)))
;OUT: success

(declare-fun T_java_lang_String () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_String)))
;OUT: success

(assert (forall ((t REF) ) (=> (javaSubType t T_java_lang_String) (= t T_java_lang_String))))
;OUT: success

(declare-fun JMLT_java_lang_String () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_String)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_String) JMLT_java_lang_String))
;OUT: success

(assert (= (erasure JMLT_java_lang_String) T_java_lang_String))
;OUT: success

(assert (forall ((t JMLTypeSort) ) (=> (jmlSubType t JMLT_java_lang_String) (= t JMLT_java_lang_String))))
;OUT: success

(declare-fun T_java_io_Serializable () REF)
;OUT: success

(assert (not (_isArrayType T_java_io_Serializable)))
;OUT: success

(declare-fun JMLT_java_io_Serializable () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (= (_JMLT_0 T_java_io_Serializable) JMLT_java_io_Serializable))
;OUT: success

(assert (= (erasure JMLT_java_io_Serializable) T_java_io_Serializable))
;OUT: success

(declare-fun T_java_lang_CharSequence () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_CharSequence)))
;OUT: success

(declare-fun JMLT_java_lang_CharSequence () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_CharSequence) JMLT_java_lang_CharSequence))
;OUT: success

(assert (= (erasure JMLT_java_lang_CharSequence) T_java_lang_CharSequence))
;OUT: success

(declare-fun T_java_lang_Exception () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Exception)))
;OUT: success

(declare-fun JMLT_java_lang_Exception () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Exception) JMLT_java_lang_Exception))
;OUT: success

(assert (= (erasure JMLT_java_lang_Exception) T_java_lang_Exception))
;OUT: success

(declare-fun T_java_lang_Object () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Object)))
;OUT: success

(declare-fun JMLT_java_lang_Object () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Object) JMLT_java_lang_Object))
;OUT: success

(assert (= (erasure JMLT_java_lang_Object) T_java_lang_Object))
;OUT: success

(declare-fun T_java_lang_RuntimeException () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_RuntimeException)))
;OUT: success

(declare-fun JMLT_java_lang_RuntimeException () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_RuntimeException) JMLT_java_lang_RuntimeException))
;OUT: success

(assert (= (erasure JMLT_java_lang_RuntimeException) T_java_lang_RuntimeException))
;OUT: success

(declare-fun T_org_jmlspecs_lang_JMLDataGroup () REF)
;OUT: success

(assert (not (_isArrayType T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (forall ((t REF) ) (=> (javaSubType t T_org_jmlspecs_lang_JMLDataGroup) (= t T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(declare-fun JMLT_org_jmlspecs_lang_JMLDataGroup () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (= (_JMLT_0 T_org_jmlspecs_lang_JMLDataGroup) JMLT_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (= (erasure JMLT_org_jmlspecs_lang_JMLDataGroup) T_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (forall ((t JMLTypeSort) ) (=> (jmlSubType t JMLT_org_jmlspecs_lang_JMLDataGroup) (= t JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(declare-fun T_fr_amossys_optet_example_sensitivedata_SensitiveData () REF)
;OUT: success

(assert (not (_isArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(declare-fun JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (= (_JMLT_0 T_fr_amossys_optet_example_sensitivedata_SensitiveData) JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))
;OUT: success

(assert (= (erasure JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) T_fr_amossys_optet_example_sensitivedata_SensitiveData))
;OUT: success

(declare-fun T_java_lang_Cloneable () REF)
;OUT: success

(assert (not (_isArrayType T_java_lang_Cloneable)))
;OUT: success

(declare-fun JMLT_java_lang_Cloneable () JMLTypeSort)
;OUT: success

(assert (not (_isJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (= (_JMLT_0 T_java_lang_Cloneable) JMLT_java_lang_Cloneable))
;OUT: success

(assert (= (erasure JMLT_java_lang_Cloneable) T_java_lang_Cloneable))
;OUT: success

(assert (distinct T_java_lang_Comparable T_java_lang_String T_java_io_Serializable T_java_lang_CharSequence T_java_lang_Exception T_java_lang_Object T_java_lang_RuntimeException T_org_jmlspecs_lang_JMLDataGroup T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Cloneable))
;OUT: success

(assert (distinct JMLT_java_lang_String JMLT_java_io_Serializable JMLT_java_lang_CharSequence JMLT_java_lang_Exception JMLT_java_lang_Object JMLT_java_lang_RuntimeException JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_Cloneable))
;OUT: success

(assert (javaSubType T_java_lang_Comparable T_java_lang_Comparable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_Comparable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_Comparable T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Comparable) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_Comparable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Comparable)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_String))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_String)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_String))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_String)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_CharSequence))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_CharSequence)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_CharSequence))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_String T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_String JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_String T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_String) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_String JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_String) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (javaSubType T_java_io_Serializable T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_io_Serializable JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_io_Serializable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_io_Serializable T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_io_Serializable) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_io_Serializable JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_io_Serializable) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (javaSubType T_java_lang_CharSequence T_java_lang_CharSequence))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_CharSequence)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_CharSequence))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_CharSequence T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_CharSequence T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_CharSequence) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_CharSequence JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_CharSequence) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_lang_Exception))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Exception)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Exception))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (javaSubType T_java_lang_Exception T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_Exception T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Exception) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Exception JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Exception) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_Object T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_Object T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Object) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Object JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Object) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_io_Serializable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_io_Serializable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_io_Serializable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_Exception))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Exception)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Exception))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Exception)))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (javaSubType T_java_lang_RuntimeException T_java_lang_RuntimeException))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_RuntimeException)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_RuntimeException))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (javaSubType T_java_lang_RuntimeException T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_RuntimeException) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_RuntimeException JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_RuntimeException) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_org_jmlspecs_lang_JMLDataGroup))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (javaSubType T_org_jmlspecs_lang_JMLDataGroup T_java_lang_Cloneable))
;OUT: success

(assert (javaSubType (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup) (_makeArrayType T_java_lang_Cloneable)))
;OUT: success

(assert (jmlSubType JMLT_org_jmlspecs_lang_JMLDataGroup JMLT_java_lang_Cloneable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup) (_makeJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_fr_amossys_optet_example_sensitivedata_SensitiveData))
;OUT: success

(assert (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Cloneable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeArrayType T_java_lang_Cloneable))))
;OUT: success

(assert (not (jmlSubType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData JMLT_java_lang_Cloneable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData) (_makeJMLArrayType JMLT_java_lang_Cloneable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_Comparable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Comparable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_String)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_String))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_String)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_String))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_io_Serializable)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_io_Serializable))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_io_Serializable)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_io_Serializable))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_CharSequence)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_CharSequence))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_CharSequence)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_CharSequence))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_Exception)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Exception))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Exception)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Exception))))
;OUT: success

(assert (javaSubType T_java_lang_Cloneable T_java_lang_Object))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Object)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Object))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Object)))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_java_lang_RuntimeException)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_RuntimeException))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_RuntimeException)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_RuntimeException))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_org_jmlspecs_lang_JMLDataGroup)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_org_jmlspecs_lang_JMLDataGroup))))
;OUT: success

(assert (not (javaSubType T_java_lang_Cloneable T_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (not (jmlSubType JMLT_java_lang_Cloneable JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData)))
;OUT: success

(assert (not (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: success

(assert (javaSubType T_java_lang_Cloneable T_java_lang_Cloneable))
;OUT: success

(assert (javaSubType (_makeArrayType T_java_lang_Cloneable) (_makeArrayType T_java_lang_Cloneable)))
;OUT: success

(assert (jmlSubType JMLT_java_lang_Cloneable JMLT_java_lang_Cloneable))
;OUT: success

(assert (jmlSubType (_makeJMLArrayType JMLT_java_lang_Cloneable) (_makeJMLArrayType JMLT_java_lang_Cloneable)))
;OUT: success

(assert (forall ((t1 REF) (t2 REF) (t3 REF) ) (=> (and (javaSubType t1 t2) (javaSubType t2 t3)) (javaSubType t1 t3))))
;OUT: success

(assert (forall ((t1 JMLTypeSort) (t2 JMLTypeSort) (t3 JMLTypeSort) ) (=> (and (jmlSubType t1 t2) (jmlSubType t2 t3)) (jmlSubType t1 t3))))
;OUT: success

(assert (distinct T_java_lang_Comparable T_java_lang_String T_java_io_Serializable T_java_lang_CharSequence T_java_lang_Exception T_java_lang_Object T_java_lang_RuntimeException T_org_jmlspecs_lang_JMLDataGroup T_fr_amossys_optet_example_sensitivedata_SensitiveData T_java_lang_Cloneable))
;OUT: success

(assert (distinct (_JMLT_1 T_java_lang_Comparable JMLT_java_lang_String) (_JMLT_0 T_java_lang_String) (_JMLT_0 T_org_jmlspecs_lang_JMLDataGroup) (_JMLT_0 T_java_lang_RuntimeException) (_JMLT_0 T_java_io_Serializable) (_JMLT_0 T_java_lang_Exception) (_JMLT_0 T_java_lang_Cloneable) (_JMLT_0 T_fr_amossys_optet_example_sensitivedata_SensitiveData) (_JMLT_0 T_java_lang_Object) (_JMLT_0 T_java_lang_CharSequence)))
;OUT: success

(declare-fun encrypted_461 () (Array REF Bool))
;OUT: success

(declare-fun _alloc___395 () (Array REF Int))
;OUT: success

(declare-fun java.lang.Object_objectTimesFinalized_9235 () (Array REF Int))
;OUT: success

(declare-fun _heap___0 () Int)
;OUT: success

(declare-fun java.lang.Object_theString_6988 () (Array REF REF))
;OUT: success

(declare-fun _isalloc___395 () (Array REF Bool))
;OUT: success

(declare-fun java.lang.Object_owner_1585 () (Array REF REF))
;OUT: success

(declare-fun java.lang.Object_theHashCode_2129 () (Array REF Int))
;OUT: success

(declare-fun java.lang.Object_objectState_1211 () (Array REF REF))
;OUT: success

(declare-fun java.lang.Object_privateState_1345 () (Array REF REF))
;OUT: success

(declare-fun _JML___exception_1146_1146___1 () REF)
;OUT: success

(declare-fun _JML___termination_1146_1146___2 () Int)
;OUT: success

(declare-fun Pre_2_0_1044___3 () Bool)
;OUT: success

(declare-fun Pre_2_0_1044___4 () Bool)
;OUT: success

(declare-fun ASSERT_65_1146_1146___5 () Bool)
;OUT: success

(declare-fun ASSERT_68_1044_1044___6 () Bool)
;OUT: success

(declare-fun ASSERT_69_1044_1044___7 () Bool)
;OUT: success

(declare-fun ASSERT_70_1146_1146___8 () Bool)
;OUT: success

(declare-fun ASSERT_71_1146_1146___9 () Bool)
;OUT: success

(declare-fun BL_1146Start_1 () Bool)
;OUT: success

(declare-fun BL_1156bodyBegin_2 () Bool)
;OUT: success

(declare-fun BL_1146_AfterLabel_3 () Bool)
;OUT: success

(declare-fun BL_1146tryTarget_5 () Bool)
;OUT: success

(declare-fun BL_1146noException_7 () Bool)
;OUT: success

(declare-fun BL_1146nocatch_8 () Bool)
;OUT: success

(declare-fun BL_1146_finally_6 () Bool)
;OUT: success

(declare-fun BL_1146_then_12 () Bool)
;OUT: success

(declare-fun BL_1146_else_13 () Bool)
;OUT: success

(declare-fun BL_1146_afterIf_11 () Bool)
;OUT: success

(declare-fun BL_1146finallyNormal_9 () Bool)
;OUT: success

(declare-fun BL_1146finallyExit_10 () Bool)
;OUT: success

(declare-fun BL_1146_AfterTry_4 () Bool)
;OUT: success

(assert (= BL_1146Start_1 BL_1156bodyBegin_2))
;OUT: success

(declare-fun __JML_AssumeCheck_ () Int)
;OUT: success

(assert (= BL_1156bodyBegin_2 (=> (= _JML___exception_1146_1146___1 NULL) (=> (= _JML___termination_1146_1146___2 0) (=> (distinct THIS NULL) (=> (or (= THIS NULL) (and (and (distinct THIS NULL) (javaSubType (javaTypeOf THIS) T_fr_amossys_optet_example_sensitivedata_SensitiveData)) (jmlSubType (jmlTypeOf THIS) JMLT_fr_amossys_optet_example_sensitivedata_SensitiveData))) (=> (and (<= (- 2147483648) (select java.lang.Object_objectTimesFinalized_9235 THIS)) (<= (select java.lang.Object_objectTimesFinalized_9235 THIS) 2147483647)) (=> (distinct (select java.lang.Object_theString_6988 THIS) NULL) (=> (select _isalloc___395 (select java.lang.Object_theString_6988 THIS)) (=> (and (and (and (and (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_io_Serializable)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_io_Serializable)))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_Comparable)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) (_JMLT_1 T_java_lang_Comparable JMLT_java_lang_String))))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_CharSequence)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_CharSequence)))) (or (= (select java.lang.Object_theString_6988 THIS) NULL) (and (and (distinct (select java.lang.Object_theString_6988 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_theString_6988 THIS)) T_java_lang_String)) (jmlSubType (jmlTypeOf (select java.lang.Object_theString_6988 THIS)) JMLT_java_lang_String)))) (=> (and (<= (- 2147483648) (select java.lang.Object_theHashCode_2129 THIS)) (<= (select java.lang.Object_theHashCode_2129 THIS) 2147483647)) (=> (or (= (select java.lang.Object_owner_1585 THIS) NULL) (select _isalloc___395 (select java.lang.Object_owner_1585 THIS))) (=> (or (= (select java.lang.Object_owner_1585 THIS) NULL) (and (and (distinct (select java.lang.Object_owner_1585 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_owner_1585 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_owner_1585 THIS)) JMLT_java_lang_Object))) (=> (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (=> (select _isalloc___395 (select java.lang.Object_privateState_1345 THIS)) (=> (and (and (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_java_lang_Cloneable)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_java_lang_Cloneable)))) (or (= (select java.lang.Object_privateState_1345 THIS) NULL) (and (and (distinct (select java.lang.Object_privateState_1345 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_privateState_1345 THIS)) T_org_jmlspecs_lang_JMLDataGroup)) (jmlSubType (jmlTypeOf (select java.lang.Object_privateState_1345 THIS)) JMLT_org_jmlspecs_lang_JMLDataGroup)))) (=> (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (=> (select _isalloc___395 (select java.lang.Object_objectState_1211 THIS)) (=> (and (and (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_java_lang_Object)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_java_lang_Object))) (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_java_lang_Cloneable)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_java_lang_Cloneable)))) (or (= (select java.lang.Object_objectState_1211 THIS) NULL) (and (and (distinct (select java.lang.Object_objectState_1211 THIS) NULL) (javaSubType (javaTypeOf (select java.lang.Object_objectState_1211 THIS)) T_org_jmlspecs_lang_JMLDataGroup)) (jmlSubType (jmlTypeOf (select java.lang.Object_objectState_1211 THIS)) JMLT_org_jmlspecs_lang_JMLDataGroup)))) (=> (select _isalloc___395 THIS) (=> (= (select _alloc___395 THIS) 0) (=> (= Pre_2_0_1044___3 false) (=> (= Pre_2_0_1044___4 true) (=> Pre_2_0_1044___4 BL_1146_AfterLabel_3))))))))))))))))))))))))
;OUT: success

(assert (= BL_1146_AfterLabel_3 (=> (= ASSERT_65_1146_1146___5 (distinct __JML_AssumeCheck_ 1)) (and ASSERT_65_1146_1146___5 (=> ASSERT_65_1146_1146___5 BL_1146tryTarget_5)))))
;OUT: success

(assert (= BL_1146tryTarget_5 (and BL_1146noException_7 BL_1146nocatch_8)))
;OUT: success

(assert (= BL_1146noException_7 (=> (= _JML___exception_1146_1146___1 NULL) BL_1146_finally_6)))
;OUT: success

(assert (= BL_1146nocatch_8 (=> (distinct _JML___exception_1146_1146___1 NULL) BL_1146_finally_6)))
;OUT: success

(assert (= BL_1146_finally_6 (and BL_1146_then_12 BL_1146_else_13)))
;OUT: success

(declare-fun fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 (Int REF ) Bool)
;OUT: success

(declare-fun _JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 (Int REF ) Bool)
;OUT: success

(assert (= BL_1146_then_12 (=> (= _JML___exception_1146_1146___1 NULL) (=> (forall ((QTHIS REF) ) (=> (and (distinct QTHIS NULL) (and (distinct QTHIS NULL) (javaSubType (javaTypeOf QTHIS) T_fr_amossys_optet_example_sensitivedata_SensitiveData))) (= (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 QTHIS) (select encrypted_461 QTHIS)))) (=> (forall ((QTHIS REF) ) (= (_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 QTHIS) (and (distinct QTHIS NULL) (and (distinct QTHIS NULL) (javaSubType (javaTypeOf QTHIS) T_fr_amossys_optet_example_sensitivedata_SensitiveData))))) (=> (= ASSERT_68_1044_1044___6 (or (not Pre_2_0_1044___4) (_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS))) (and ASSERT_68_1044_1044___6 (=> ASSERT_68_1044_1044___6 (=> (= ASSERT_69_1044_1044___7 (or (not Pre_2_0_1044___4) (not (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)))) (and ASSERT_69_1044_1044___7 (=> ASSERT_69_1044_1044___7 BL_1146_afterIf_11)))))))))))
;OUT: success

(assert (= BL_1146_else_13 (=> (not (= _JML___exception_1146_1146___1 NULL)) (=> (= ASSERT_70_1146_1146___8 (or (not Pre_2_0_1044___4) (or false (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException))))) (and ASSERT_70_1146_1146___8 (=> ASSERT_70_1146_1146___8 BL_1146_afterIf_11))))))
;OUT: success

(assert (= BL_1146_afterIf_11 (=> (= ASSERT_71_1146_1146___9 (distinct __JML_AssumeCheck_ 2)) (and ASSERT_71_1146_1146___9 (=> ASSERT_71_1146_1146___9 (and BL_1146finallyNormal_9 BL_1146finallyExit_10))))))
;OUT: success

(assert (= BL_1146finallyNormal_9 (=> (= _JML___termination_1146_1146___2 0) BL_1146_AfterTry_4)))
;OUT: success

(assert (= BL_1146finallyExit_10 (=> (distinct _JML___termination_1146_1146___2 0) BL_1146_AfterTry_4)))
;OUT: success

(assert (= BL_1146_AfterTry_4 true))
;OUT: success

(assert (not BL_1146Start_1))
;OUT: success

(push 1)
;OUT: success

(assert (= __JML_AssumeCheck_ 0))
;OUT: success

(push 1)
;OUT: success

(check-sat)
;OUT: unknown

(get-info :reason-unknown)
;OUT: (:reason-unknown (incomplete (theory array)))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (select java.lang.Object_privateState_1345 THIS)))
;OUT: (((select java.lang.Object_privateState_1345 THIS) REF!val!16))

(get-value ( (select java.lang.Object_theHashCode_2129 THIS)))
;OUT: (((select java.lang.Object_theHashCode_2129 THIS) (- 2147481211)))

(get-value ( _heap___0))
;OUT: ((_heap___0 5))

(get-value ( (select java.lang.Object_objectTimesFinalized_9235 THIS)))
;OUT: (((select java.lang.Object_objectTimesFinalized_9235 THIS) (- 2147482412)))

(get-value ( (distinct __JML_AssumeCheck_ 2)))
;OUT: (((distinct __JML_AssumeCheck_ 2) true))

(get-value ( (not Pre_2_0_1044___4)))
;OUT: (((not Pre_2_0_1044___4) false))

(get-value ( (not (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS))))
;OUT: (((not (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)) false))

(get-value ( (and (distinct QTHIS NULL) (javaSubType (javaTypeOf QTHIS) T_fr_amossys_optet_example_sensitivedata_SensitiveData))))
;OUT: (error "line 530 column 28: unknown constant QTHIS")

(get-value ( (distinct __JML_AssumeCheck_ 1)))
;OUT: (((distinct __JML_AssumeCheck_ 1) true))

(get-value ( (select java.lang.Object_theString_6988 THIS)))
;OUT: (((select java.lang.Object_theString_6988 THIS) REF!val!13))

(get-value ( (not Pre_2_0_1044___4)))
;OUT: (((not Pre_2_0_1044___4) false))

(get-value ( 1))
;OUT: ((1 1))

(get-value ( THIS))
;OUT: ((THIS REF!val!0))

(get-value ( _JML___exception_1146_1146___1))
;OUT: ((_JML___exception_1146_1146___1 REF!val!18))

(get-value ( QTHIS))
;OUT: (error "line 537 column 13: unknown constant QTHIS")

(get-value ( _heap___0))
;OUT: ((_heap___0 5))

(get-value ( 2))
;OUT: ((2 2))

(get-value ( QTHIS))
;OUT: (error "line 540 column 13: unknown constant QTHIS")

(get-value ( (select java.lang.Object_owner_1585 THIS)))
;OUT: (((select java.lang.Object_owner_1585 THIS) REF!val!14))

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( (or (not Pre_2_0_1044___4) (_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS))))
;OUT: (((or (not Pre_2_0_1044___4) (_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)) true))

(get-value ( (or (not Pre_2_0_1044___4) (not (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)))))
;OUT: (((or (not Pre_2_0_1044___4) (not (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS))) false))

(get-value ( QTHIS))
;OUT: (error "line 545 column 13: unknown constant QTHIS")

(get-value ( (or false (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException)))))
;OUT: (((or false (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException))) false))

(get-value ( (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 QTHIS)))
;OUT: (error "line 547 column 95: unknown constant QTHIS")

(get-value ( (select java.lang.Object_objectState_1211 THIS)))
;OUT: (((select java.lang.Object_objectState_1211 THIS) REF!val!17))

(get-value ( (not Pre_2_0_1044___4)))
;OUT: (((not Pre_2_0_1044___4) false))

(get-value ( QTHIS))
;OUT: (error "line 550 column 13: unknown constant QTHIS")

(get-value ( (distinct QTHIS NULL)))
;OUT: (error "line 551 column 23: unknown constant QTHIS")

(get-value ( __JML_AssumeCheck_))
;OUT: ((__JML_AssumeCheck_ 0))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( (and (distinct QTHIS NULL) (and (distinct QTHIS NULL) (javaSubType (javaTypeOf QTHIS) T_fr_amossys_optet_example_sensitivedata_SensitiveData)))))
;OUT: (error "line 554 column 28: unknown constant QTHIS")

(get-value ( (or (not Pre_2_0_1044___4) (or false (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException))))))
;OUT: (((or (not Pre_2_0_1044___4) (or false (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException)))) false))

(get-value ( _heap___0))
;OUT: ((_heap___0 5))

(get-value ( Pre_2_0_1044___4))
;OUT: ((Pre_2_0_1044___4 true))

(get-value ( (and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException))))
;OUT: (((and (distinct _JML___exception_1146_1146___1 NULL) (javaSubType (javaTypeOf _JML___exception_1146_1146___1) T_java_lang_RuntimeException)) false))

(get-value ( (_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)))
;OUT: (((_JML_METHODEF__fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS) true))

(get-value ( (fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS)))
;OUT: (((fr_amossys_optet_example_sensitivedata_SensitiveData_getEncrypted_1452 _heap___0 THIS) true))

(get-value ( NULL))
;OUT: ((NULL REF!val!18))

(get-value ( THIS))
;OUT: ((THIS REF!val!0))

(get-value ( BL_1146Start_1))
;OUT: ((BL_1146Start_1 false))

(get-value ( BL_1156bodyBegin_2))
;OUT: ((BL_1156bodyBegin_2 false))

(get-value ( BL_1146_AfterLabel_3))
;OUT: ((BL_1146_AfterLabel_3 false))

(get-value ( ASSERT_65_1146_1146___5))
;OUT: ((ASSERT_65_1146_1146___5 true))

(get-value ( BL_1146tryTarget_5))
;OUT: ((BL_1146tryTarget_5 false))

(get-value ( BL_1146noException_7))
;OUT: ((BL_1146noException_7 false))

(get-value ( BL_1146_finally_6))
;OUT: ((BL_1146_finally_6 false))

(get-value ( BL_1146_then_12))
;OUT: ((BL_1146_then_12 false))

(get-value ( ASSERT_68_1044_1044___6))
;OUT: ((ASSERT_68_1044_1044___6 true))

(get-value ( ASSERT_69_1044_1044___7))
;OUT: ((ASSERT_69_1044_1044___7 false))

(pop 1)
;OUT: success

(assert ASSERT_69_1044_1044___7)
;OUT: success

(push 1)
;OUT: success

(check-sat)
;OUT: unsat

(exit)
;OUT: success

;;Exiting solver
