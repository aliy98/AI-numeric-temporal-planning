(define (problem warehouse-prob1)
    (:domain warehouse)
    (:objects
        ; defining the objects which are present in this problem
        heavy - heavy
        light1  - light
        fragile - fragile
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
        (not (mover-at-StationCharge mover1))
        (not (mover-at-StationCharge mover2))
        (crate-at-warehouse light1)
        (crate-at-warehouse fragile)
        (crate-at-warehouse heavy)
         
        ; specifing the weight of each crate 
        (= (crate_weight light1) 20)
        (= (crate_weight fragile) 20)
        (= (crate_weight heavy) 70)

        ; specifing the distance of each crate from the loadingBay
        (= (crate_distance light1) 20)
        (= (crate_distance fragile) 20)
        (= (crate_distance heavy) 10)
        
        ; specifing the fragile of the crate
        (= (crate_fragile light1) 1)
        (= (crate_fragile fragile) 1.5)
        (= (crate_fragile heavy) 1)
        
        ; specifing the power of the mover
        (= (mover_power mover1) 20)
        (= (mover_power mover2) 20)
    )
    

    (:goal
        ; defining the goal condition
        (and (crate-at-conveyorBelt light1)
             (crate-at-conveyorBelt fragile)
             (crate-at-conveyorBelt heavy)
        )
    )

    (:metric minimize
        ; specifing the problem as a temporal planning problem with the cost function of total-time
        (total-time)
    )
)
