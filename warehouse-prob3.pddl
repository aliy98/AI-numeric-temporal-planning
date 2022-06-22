(define (problem warehouse-prob3)
    (:domain warehouse)
    (:objects
        ; defining the objects which are present in this problem
        heavy1  heavy2 - heavy
        fragile - fragile
        light - light
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
        (crate-at-warehouse light)
        (crate-at-warehouse heavy1)
        (crate-at-warehouse fragile)
        (crate-at-warehouse heavy2)

        ; specifing the weight of each crate 
        (= (crate_weight light) 30)
        (= (crate_weight heavy1) 70)
        (= (crate_weight fragile) 80)
        (= (crate_weight heavy2) 60)

        ; specifing the distance of each crate from the loadingBay
        (= (crate_distance light) 10)
        (= (crate_distance heavy1) 20)
        (= (crate_distance fragile) 20)
        (= (crate_distance heavy2) 30)
        
        ; specifing the fragile of the crate
        (= (crate_fragile light) 1)
        (= (crate_fragile fragile) 1.5)
        (= (crate_fragile heavy1) 1)
        (= (crate_fragile heavy2) 1)
        
        ; specifing the power of the mover
        (= (mover_power mover1) 20)
        (= (mover_power mover2) 20)
    )


    (:goal
        ; defining the goal condition
        (and (crate-at-conveyorBelt light)
             (crate-at-conveyorBelt heavy1)
             (crate-at-conveyorBelt fragile)
             (crate-at-conveyorBelt heavy2)
        )
    )

    (:metric minimize
        ; specifing the problem as a temporal planning problem with the cost function of total-time
        (total-time)
    )
)
