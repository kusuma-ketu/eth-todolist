pragma solidity >=0.4.22 <0.9.0;

contract ToDoList {
    uint taskCount=0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping (uint => Task) public tasks;

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }

    constructor() public {
        createTask("Check out github.com/kusuma-ketu");
    }
}
