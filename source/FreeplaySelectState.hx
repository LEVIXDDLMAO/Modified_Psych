package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

var select:Array<String> = ['Normal FNF', 'Osu!Maina Songs', 'Remixs', 'OG Mods', 'Covers'];
	private var grpOptions:FlxTypedGroup<Alphabet>;
	private static var curSelected:Int = 0;
	public static var menuBG:FlxSprite;

function openSelectedSubstate(label:String) {
		switch(label) {
			case 'Normal FNF':
                MusicBeatState.switchState(new FreeplayState());
            case 'Osu!Maina Songs':
				openSubState(new menu.OsuSongsSubState());
			case 'Remixs':
				openSubState(new menu.RemixsSubState());
			case 'OG Mods':
				openSubState(new menu.OGModsSubState());
			case 'Covers':
				openSubState(new menu.CoversSubState());
		}
	}
