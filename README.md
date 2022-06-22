# AI_numeric_temporal_planning
In the considered warehouse, there are two robots that move crates around. The crates are to be loaded on the conveyor belt by an additional robot (as in the picture below). The idea is that when the warehouse receives new orders, the corresponding crates to be moved are communicated to the robots, that take them to a loading bay where a dedicated robot can put them on the conveyor belt. Usually, one robot is enough to move light crates in the warehouse. However, in the presence of heavy (>50kg) crates, two robots are required.

<p align="center">
  <img src="https://user-images.githubusercontent.com/65722399/167380424-12dbcc4e-81a6-4678-a2e1-720f3578d469.jpg" width="350" title="hover text">
</p>

## Usage
For numerc and temporal planning we can use LPG planner. After cloning this repository make sure the planner file is executable:
```bashscript
chmod +x lpg
```
then you can find the solution for each problem by using a single line command, for example to solve the problem 1 you should run this:
```bashscript
./lpg -o warehouse.pddl -f warehouse-prob1.pddl -n 1
```
