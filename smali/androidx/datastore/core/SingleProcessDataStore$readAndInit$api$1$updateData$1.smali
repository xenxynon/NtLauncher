.class final Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;
.super Lkotlin/coroutines/jvm/internal/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;->updateData(Ly5/p;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.datastore.core.SingleProcessDataStore$readAndInit$api$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x1f7,
        0x151,
        0x153
    }
    m = "updateData"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;


# direct methods
.method constructor <init>(Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;",
            "Lq5/d<",
            "-",
            "Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/d;-><init>(Lq5/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->label:I

    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1$updateData$1;->this$0:Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroidx/datastore/core/SingleProcessDataStore$readAndInit$api$1;->updateData(Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
