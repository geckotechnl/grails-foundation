<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Test Foundation</title>
    <meta name="layout" content="foundation">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
</head>

<body>

<div class="row">
    <div class="large-12 columns">
        <h1>Some Foundation components to test</h1>

        <p>Below are some Foundation components from the docs to test if the framework is working correctly.</p>
    </div>
</div>

<div class="row">
    <div class="large-12 columns">
        <h2>Abide</h2>

        <form data-abide novalidate>
            <div data-abide-error class="alert callout" style="display: none;">
                <p><i class="fi-alert"></i> There are some errors in your form.</p>
            </div>

            <div class="row">
                <div class="small-12 columns">
                    <label>Number Required
                        <input type="text" placeholder="1234" aria-describedby="exampleHelpText" required
                               pattern="number">
                        <span class="form-error">
                            Yo, you had better fill this out, it's required.
                        </span>
                    </label>

                    <p class="help-text" id="exampleHelpText">Here's how you use this input field!</p>
                </div>

                <div class="small-12 columns">
                    <label>Nothing Required!
                        <input type="text" placeholder="Use me, or don't" aria-describedby="exampleHelpTex"
                               data-abide-ignore>
                    </label>

                    <p class="help-text"
                       id="exampleHelpTex">This input is ignored by Abide using `data-abide-ignore`</p>
                </div>

                <div class="small-12 columns">
                    <label>Password Required
                        <input type="password" id="password" placeholder="yeti4preZ" aria-describedby="exampleHelpText"
                               required>
                        <span class="form-error">
                            I'm required!
                        </span>
                    </label>

                    <p class="help-text" id="exampleHelpText">Enter a password please.</p>
                </div>

                <div class="small-12 columns">
                    <label>Re-enter Password
                        <input type="password" placeholder="yeti4preZ" aria-describedby="exampleHelpText2" required
                               pattern="alpha_numeric" data-equalto="password">
                        <span class="form-error">
                            Hey, passwords are supposed to match!
                        </span>
                    </label>

                    <p class="help-text"
                       id="exampleHelpText2">This field is using the `data-equalto="password"` attribute, causing it to match the password field above.</p>
                </div>
            </div>

            <div class="row">
                <div class="medium-6 columns">
                    <label>URL Pattern, not required, but throws error if it doesn't match the Regular Expression for a valid URL.
                        <input type="text" placeholder="http://foundation.zurb.com" pattern="url">
                    </label>
                </div>

                <div class="medium-6 columns">
                    <label>European Cars, Choose One, it can't be the blank option.
                        <select id="select" required>
                            <option value=""></option>
                            <option value="volvo">Volvo</option>
                            <option value="saab">Saab</option>
                            <option value="mercedes">Mercedes</option>
                            <option value="audi">Audi</option>
                        </select>
                    </label>
                </div>
            </div>

            <div class="row">
                <fieldset class="large-6 columns">
                    <legend>Choose Your Favorite, and this is required, so you have to pick one.</legend>
                    <input type="radio" name="pokemon" value="Red" id="pokemonRed"><label for="pokemonRed">Red</label>
                    <input type="radio" name="pokemon" value="Blue" id="pokemonBlue" required><label
                        for="pokemonBlue">Blue</label>
                    <input type="radio" name="pokemon" value="Yellow" id="pokemonYellow"><label
                        for="pokemonYellow">Yellow</label>
                </fieldset>
                <fieldset class="large-6 columns">
                    <legend>Choose Your Favorite - not required, you can leave this one blank.</legend>
                    <input type="radio" name="pockets" value="Red" id="pocketsRed"><label for="pocketsRed">Red</label>
                    <input type="radio" name="pockets" value="Blue" id="pocketsBlue"><label
                        for="pocketsBlue">Blue</label>
                    <input type="radio" name="pockets" value="Yellow" id="pocketsYellow"><label
                        for="pocketsYellow">Yellow</label>
                </fieldset>
                <fieldset class="large-6 columns">
                    <legend>Check these out</legend>
                    <input id="checkbox1" type="checkbox"><label for="checkbox1">Checkbox 1</label>
                    <input id="checkbox2" type="checkbox" required><label for="checkbox2">Checkbox 2</label>
                    <input id="checkbox3" type="checkbox"><label for="checkbox3">Checkbox 3</label>
                </fieldset>
            </div>

            <div class="row">
                <fieldset class="large-6 columns">
                    <button class="button" type="submit" value="Submit">Submit</button>
                </fieldset>
                <fieldset class="large-6 columns">
                    <button class="button" type="reset" value="Reset">Reset</button>
                </fieldset>
            </div>
        </form>
    </div>
</div>

<div class="row">
    <div class="large-12 columns">
        <h2>Reveal</h2>

        <p><a data-open="exampleModal1">Click me for a modal</a></p>

        <div class="reveal" id="exampleModal1" data-reveal>
            <h1>Awesome. I Have It.</h1>

            <p class="lead">Your couch. It is mine.</p>

            <p>I'm a cool paragraph that lives inside of an even cooler modal. Wins!</p>
            <button class="close-button" data-close aria-label="Close reveal" type="button">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
</div>

<div class="row">
    <div class="large-12 columns">
        <h2>Callout</h2>

        <div class="callout">
            <h5>This is a callout.</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>

        <div class="callout primary">
            <h5>This is a primary callout.</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>

        <div class="callout secondary">
            <h5>This is a secondary callout</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>

        <div class="callout success">
            <h5>This is a success callout</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>

        <div class="callout warning">
            <h5>This is a warning callout</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>

        <div class="callout alert">
            <h5>This is an alert callout</h5>

            <p>It has an easy to override visual style, and is appropriately subdued.</p>
            <a href="#0">It's dangerous to go alone, take this.</a>
        </div>
    </div>

</div>

<div class="row">
    <div class="large-12 columns">
        <div class="wow slide-in-right mui-enter" data-wow-delay="2s">
            <h1>Swoosh!</h1>
            <p>I am sliding in here, with a WOW effect.</p>
        </div>
    </div>
</div>

<script>
    (function() {
        var wow = new WOW({
            boxClass: 'wow',
            animateClass: 'mui-enter-active'
        }).init();
    })();
</script>

</body>
</html>