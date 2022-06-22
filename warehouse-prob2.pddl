(define (problem warehouse-prob2)
    (:domain warehouse)
    (:objects
        ; defining the objects which are present in this problem
        heavy1  - heavy
        light1 light2 - light
        fragile -fragile
        mover1 - mover1
        mover2 - mover2
        loader - loader
    )

    (:init
        ; specifing the initial condition of objects
        (mover-empty mover1)
        (mover-empty mover2)
        (loader-free loader)
        (mover-at-loadingBay mover1)
        (mover-at-loadingBay mover2)
        (crate-at-warehouse light1)
        (crate-at-warehouse light2)
        (crate-at-warehouse heavy1)
        (crate-at-warehouse fragile)

        ; specifing the weight of each crate 
        (= (crate_weight light1) 20)
        (= (crate_weight light2) 30)
        (= (crate_weight heavy1) 70)
        (= (crate_weight fragile) 80)

        ; specifing the distance of each crate from the loadingBay
        (= (crate_distance light1) 20)
        (= (crate_distance light2) 10)
        (= (crate_distance heavy1) 10)
        (= (crate_distance fragile) 20)
        
         ; specifing the fragile of the crate
        (= (crate_fragile light1) 1)
        (= (crate_fragile light2) 1)
        (= (crate_fragile fragile) 1.5)
        (= (crate_fragile heavy1) 1)
        
        ; specifing the power of the mover
        (= (mover_power mover1) 20)
        (= (mover_power mover2) 20)
        
    )


    (:goal
        ; defining the goal condition
        (and (crate-at-conveyorBelt light1)
             (crate-at-conveyorBelt light2)
             (crate-at-conveyorBelt heavy1)
             (crate-at-conveyorBelt fragile)
        )
    )

    (:metric minimize
        ; specifing the problem as a temporal planning problem with the cost function of total-time
        (total-time)
    )
)
