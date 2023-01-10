# Gato

Gato is a way to make chatbots for urbit groups.

## Installing

`|install ~botter-midsum-salrux %gato`

## Dojo Usage

Add a command with `:gato &add ['hello' [%gato %hello] !>("howdy")]`

You can remove it later with `:gato &remove 'hello'`

The bot will respond to `/hello lorem ipsum` with `howdy ~sampel-palnet! You said lorem ipsum`

To change the configuration, use `:gato &set ['hello' [%gato %hello] !>("good morning")]`

## Writing Commands

Each gato command is a thread. See the [thread guide](https://developers.urbit.org/reference/arvo/threads/overview) for how to write a thread, and [sur/gato.hoon](https://github.com/midsum-salrux/gato/blob/master/desk/sur/gato.hoon) for argument and return types.

## Examples

You can find example commands in [/ted](https://github.com/midsum-salrux/gato/tree/master/desk/ted). So far these include:

- A weather lookup command with geocoding
- A stock and crypto price lookup command (the famous "Tendiebot")
