import crafttweaker.item.IIngredient;
import crafttweaker.recipes;
// bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped("12s Bucket", <minecraft:bucket>,
    [
        [null, null, null],
        [<ore:plateIron>, null, <ore:plateIron>],
        [null, <ore:plateIron>, null]
    ]);

// gunpowder Unification Another Recipes
val dustsulfer = [<ore:dustSulfur>, <ore:dustSulphur>] as IIngredient[];
val dustniter = [<ore:dustNiter>, <ore:dustSaltpeter>] as IIngredient[];
val dustcoal = [<ore:dustCoal>, <ore:dustCharcoal>] as IIngredient[];


for sulfer in dustsulfer {
    for niter in dustniter {
        for coal in dustcoal {
            recipes.removeShapeless(<minecraft:gunpowder>, [sulfer, niter, niter, niter, coal], true);
            recipes.removeShapeless(<minecraft:gunpowder>, [sulfer, niter, niter, coal], true);
            recipes.removeShapeless(<minecraft:gunpowder>, [sulfer, niter, niter, niter, <minecraft:coal:1>], true);

        }
    }
}
