(define (problem warehouse-prob4)
    (:domain warehouse)
    (:objects
        ; defining the objects which are present in this problem
        heavy - heavy
        light1 light6 - light
        fragile1 fragile2 fragile3 fragile4 - fragile 
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
        (crate-at-warehouse fragile1)
        (crate-at-warehouse fragile2)
        (crate-at-warehouse fragile3)
        (crate-at-warehouse fragile4)
        (crate-at-warehouse light6)

        ; specifing the weight of each crate 
        (= (crate_weight light1) 30)
        (= (crate_weight fragile1) 20)
        (= (crate_weight fragile2) 30)
        (= (crate_weight fragile3) 20)
        (= (crate_weight fragile4) 30)
        (= (crate_weight light6) 20)

        ; specifing the distance of each crate from the loadingBay
        (= (crate_distance light1) 20)
        (= (crate_distance fragile1) 20)
        (= (crate_distance fragile2) 10)
        (= (crate_distance fragile3) 20)
        (= (crate_distance fragile4) 30)
        (= (crate_distance light6) 10)
        
         ; specifing the fragile of the crate
        (= (crate_fragile light1) 1)
        (= (crate_fragile light6) 1)
        (= (crate_fragile fragile1) 1.5)
        (= (crate_fragile fragile2) 1.5)
        (= (crate_fragile fragile3) 1.5)
        (= (crate_fragile fragile4) 1.5)
        
        
        ; specifing the power of the mover
        (= (mover_power mover1) 20)
        (= (mover_power mover2) 20)
        
    )

    (:goal
        ; defining the goal condition
        (and (crate-at-conveyorBelt light1)
             (crate-at-conveyorBelt fragile1)
             (crate-at-conveyorBelt fragile2)
             (crate-at-conveyorBelt fragile3)
             (crate-at-conveyorBelt fragile4)
             (crate-at-conveyorBelt light6)
        )
    )

    (:metric minimize
        ; specifing the problem as a temporal planning problem with the cost function of total-time
        (total-time)
    )
)
