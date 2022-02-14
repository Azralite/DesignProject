const slider = interact('.slider');

slider.draggable({
    // origin: (9000,0),
    origin: 'self',
    inertia: false,
    // modifiers: [
    //     interact.modifiers.restrict({
    //         restriction: 'self'
    //     })
    // ],


    modifiers: [
        interact.modifiers.snap({
            targets: [
                { x: 0, y: 0 },
                { x: 160, y: 0 },
                { x: 330, y: 0 },
                { x: 500, y: 0 },
                { x: 660, y: 0 },
                { x: 830, y: 0 },
                { x: 1000, y: 0 },
                { x: 0, y: 100 },
                { x: 160, y: 100 },
                { x: 330, y: 100 },
                { x: 500, y: 100 },
                { x: 660, y: 100 },
                { x: 830, y: 100 },
                { x: 1000, y: 100 },
            ],
        }),
        /*  interact.modifiers.restrict({
             restriction: 'self',
             elementRect: { top: 0, left: 0, bottom: 1, right: 1 },
             endOnly: true
         }) */
    ],
    listeners: {
        move(event) {


            const sliderWidth = interact.getElementRect(event.target).width;
            const value = event.pageX / sliderWidth;
            var feeling;

            switch (value) {
                case 0:
                    feeling = "Strongly Disagree";
                    break;
                case 0.16:
                    feeling = "Disagree";
                    break;
                case 0.33:
                    feeling = "Little Disagree";
                    break;
                case 0.5:
                    feeling = "Neutral";
                    break;
                case 0.66:
                    feeling = "Little Agree";
                    break;
                case 0.83:
                    feeling = "Agree";
                    break;
                case 1:
                    feeling = "Strongly Agree";
                    break;


                default:
                    break;
            }
            console.log(value);
            event.target.style.paddingLeft = (value * 100) + "%";
            event.target.setAttribute('data-value', feeling);
        }
    }
})