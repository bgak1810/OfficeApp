const arr = [
    { id: "1", name: "Snatch", type: "crime" },
    { id: "2", name: "Witches of Eastwick", type: "comedy" },
    { id: "3", name: "X-Men", type: "action" },
    { id: "4", name: "Ordinary People", type: "drama" },
    { id: "5", name: "Billy Elliot", type: "drama" },
    { id: "6", name: "Toy Story", type: "children" }
];
const removeById = (arr, id) => {
    const requiredIndex = arr.findIndex(el => {
        return el.id === String(id);
    });
    if (requiredIndex === -1) {
        return false;
    };
    return !!arr.splice(requiredIndex, 1);
};
removeById(arr, 5);
console.log(arr);