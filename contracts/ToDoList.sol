pragma solidity ^0.5.0;

contract ToDoList {
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        creatTask("Check out google.com");
    }

    function creatTask(string memory _contnet) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _contnet, false);
    }

}