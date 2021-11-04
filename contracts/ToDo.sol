// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract ToDo {
   struct Task {
      uint256 id;
      uint256 date;
      string content;
      string author;
      bool done;
   }

   mapping(uint256 => Task) tasks;
   uint256[] taskIds;
   uint256 lastTaskId = 1;

   constructor() public {}

   event TaskCreated(
      uint256 id,
      uint256 date,
      string content,
      string author,
      bool done
   );

   function createTask(string memory _content, string memory _author) public {
      lastTaskId++;
      tasks[lastTaskId] = Task(
         lastTaskId,
         block.timestamp,
         _content,
         _author,
         false
      );
      taskIds.push(lastTaskId);
      emit TaskCreated(lastTaskId, block.timestamp, _content, _author, false);
   }

   function getTask(uint256 id)
      public
      view
      returns (
         uint256,
         uint256,
         string memory,
         string memory,
         bool
      )
   {
      return (
         id,
         tasks[id].date,
         tasks[id].content,
         tasks[id].author,
         tasks[id].done
      );
   }

   function getTaskIds() public view returns (uint256[] memory) {
      return taskIds;
   }
}
