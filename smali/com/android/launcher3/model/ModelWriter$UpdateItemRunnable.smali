.class Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;
.super Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateItemRunnable"
.end annotation


# instance fields
.field private final mItem:Lcom/android/launcher3/model/data/ItemInfo;

.field private final mItemId:I

.field private final mWriter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/util/ContentWriter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/util/ContentWriter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;-><init>(Lcom/android/launcher3/model/ModelWriter;)V

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    iget p1, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iput p1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0}, Lcom/android/launcher3/model/ModelWriter;->access$000(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/BgDataModel;->itemsIdMap:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eq v0, v1, :cond_0

    const-string p0, "ModelWriter"

    const-string v0, "UpdateItemRunnable ItemInfo doesn\'t match original"

    invoke-static {p0, v0}, Ly2/e;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-static {v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->access$100(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mWriter:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/ContentWriter;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v3}, Lcom/android/launcher3/model/ModelWriter;->access$100(Lcom/android/launcher3/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItem:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, p0, Lcom/android/launcher3/model/ModelWriter$UpdateItemRunnable;->mItemId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/ModelWriter$UpdateItemBaseRunnable;->updateItemArrays(Lcom/android/launcher3/model/data/ItemInfo;I)V

    return-void
.end method
