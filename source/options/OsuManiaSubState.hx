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

class OsuManiaSubState extends BaseOptionsMenu
{
	public function new(){
		var option:Option = new Option('Hitsound Volume',
		'Funny notes does \"Tick!\" when you hit them."',
		'hitsoundVolume',
		'percent',
		0);
		addOption(option);
		option.scrollSpeed = 1.6;
		option.minValue = 0.0;
		option.maxValue = 1;
		option.changeValue = 0.1;
		option.decimals = 1;
		option.onChange = onChangeHitsoundVolume;
	
		var option:Option = new Option('Lane Underlay',
			'Changes transparency of lane underlay behind the notes.',
			'underlayAlpha',
			'int',
			0);
		option.displayFormat = '%v%';
		option.scrollSpeed = 50;
		option.minValue = 0;
		option.maxValue = 100;
		addOption(option);
	
	
		var option:Option = new Option('Opponent Notes',
			'If unchecked, opponent notes get hidden.',
			'opponentStrums',
			'bool',
			true);
		addOption(option);

		var option:Option = new Option('Note Skin',
			"What note skin do you prefer for playing?",
			'noteSkinSettings',
			'string',
			'Classic',
			['Classic', 'Circle']);
		addOption(option);
	
		super();
	}
	function onChangeHitsoundVolume()
	{
		FlxG.sound.play(Paths.sound('hitsound'), ClientPrefs.hitsoundVolume);
	}	
}
