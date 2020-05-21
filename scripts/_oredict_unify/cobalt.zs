import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

// OreBlock OreDict
var ore = <ore:oreCobalt> as IOreDictEntry;
var items = [<galaxyspace:mirandablocks:7>, <galaxyspace:barnarda_c_ores:11>] as IItemStack[];

for i in items {
	if (!(ore has i)) {
		ore.add(i);
	} else {
		print(ore.name ~ " already has " ~ i.name);
	}
}

<ore:oreCobaltum>.remove(<galaxyspace:barnarda_c_ores:11>);


// Remove Others from OreDict
<ore:ingotCobalt>.remove(<galaxyspace:ingots:0>);


// Remove, add to Chisel and Rename
rem(<galaxyspace:decoblocks:4>);
<ore:blockCobalt>.add(<galaxyspace:decoblocks:4>);
remByName("chisel:uncraft_blockcobalt");

remAndHide(<galaxyspace:ingots:0>);

// Remove SAG Mill recipe
remEnderSAG(<galaxyspace:gsores:0>);

// Replace all Ingots

recipes.replaceAllOccurences(<galaxyspace:ingots:0>, <tconstruct:ingots:0>);