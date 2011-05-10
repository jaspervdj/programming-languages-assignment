functor
import
   Application
   System
   OS
define
   /* Generate a random list with N elements */
   fun lazy {RandomList N}
      if N==0 then nil
      else {OS.rand}|{RandomList (N-1)}
      end
   end

   /* Lazy append */
   fun lazy {LAppend Xs Ys}
      case Xs
      of nil then Ys
      [] X|Xr then X|{LAppend Xr Ys}
      end
   end

   /* Partition a list using a predicate */
   fun lazy {LPartition Xs P}
      fun {LPartitionIter Xs Ys Zs}
	 case Xs
	 of nil then Ys#Zs
	 [] X|Xr then
	    if {P X} then {LPartitionIter Xr X|Ys Zs}
	    else {LPartitionIter Xr Ys X|Zs}
	    end
	 end
      end
   in
      {LPartitionIter Xs nil nil}
   end
   
   /* QuickSort algorithm */
   fun lazy {QuickSort Xs}
      case Xs
      of nil then nil
      [] X|Xr then Smaller Larger in
         Smaller#Larger={LPartition Xr fun lazy {$ Y} Y=<X end}
         {LAppend {QuickSort Smaller} X|{QuickSort Larger}}
      end
   end
   
   local N List in
      /* Initialize random generator */
      {OS.srand {OS.time}}

      /* The length of the list is given by the first command line argument */
      N|_={Application.getArgs plain}
      List={RandomList {StringToInt N}}

      /* Sort and show the list, then exit */
      {ForAll {QuickSort List} System.show}
      {Application.exit 0}
   end
end
