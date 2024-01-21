// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Struct {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create (string calldata _text) public {
        todos.push(Todo(_text, false));
        todos.push(Todo({text: _text, completed: false}));

        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function get(uint _index) public view returns(string memory _text, bool completed){
        Todo storage todo = todos[_index];
        return(todo.text, todo.completed);
    }

    function updateTodo(uint _index, string memory _text) public{
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
}