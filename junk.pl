das_fact(kind,Edge,edge),
(
    )
-> Passed = true
;  Passed = false
)

allconditions:-
    diagram_fact(source,Edge,SourceLongID),
    diagram_fact(synonym,SourceID,SourceLongID),
    diagram_fact(target,Edge,TargetLongID),
    diagram_fact(synonym,TargetID,TargetLongID),
    diagram_fact(direct-contains,SourceParent,SourceID),
    diagram_fact(direct-contains,TargetParent,TargetID),
    diagram_fact(direct-contains,SourceContainer,SourceParent),
    diagram_fact(direct-contains,TargetContainer,TargetParent),
    (
	SourceContainer = TargetContainer
    ; das_fact(direct_contains,SourceContainer,TargetContainer)
    ; das_fact(direct_contains,TargetContainer,SourceContainer)
    ),
    true.

(allconditions -> Passed = true ; Passed = false)

( (c1, c2, c3, c4, c5, c6, c7, c8, c9) -> Passed = true ; Passed = false )


  forall das_fact(kind,Edge,edge)
    diagram_fact(source,Edge,SourceLongID)
    diagram_fact(synonym,SourceID,SourceLongID)
    diagram_fact(target,Edge,TargetLongID)
    diagram_fact(synonym,TargetID,TargetLongID)
	diagram_fact(direct-contains,SourceParent,SourceID)
    diagram_fact(direct-contains,TargetParent,TargetID)
    diagram_fact(direct-contains,SourceContainer,SourceParent)
    diagram_fact(direct-contains,TargetContainer,TargetParent)
    cond 
      SourceContainer = TargetContainer
      das_fact(direct_contains,SourceContainer,TargetContainer)
      das_fact(direct_contains,TargetContainer,SourceContainer)
    end cond
  end forall

	
