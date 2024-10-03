.class final Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/SingleProcessDataStore;->transformAndWrite(Ly5/p;Lq5/g;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Ly5/p<",
        "Li6/m0;",
        "Lq5/d<",
        "-TT;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.datastore.core.SingleProcessDataStore$transformAndWrite$newData$1"
    f = "SingleProcessDataStore.kt"
    l = {
        0x192
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $curData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $transform:Ly5/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/p<",
            "TT;",
            "Lq5/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ly5/p;Ljava/lang/Object;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/p<",
            "-TT;-",
            "Lq5/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TT;",
            "Lq5/d<",
            "-",
            "Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$transform:Ly5/p;

    iput-object p2, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$curData:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "*>;)",
            "Lq5/d<",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    new-instance p1, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    iget-object v0, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$transform:Ly5/p;

    iget-object p0, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$curData:Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;-><init>(Ly5/p;Ljava/lang/Object;Lq5/d;)V

    return-object p1
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$transform:Ly5/p;

    iget-object v1, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->$curData:Ljava/lang/Object;

    iput v2, p0, Landroidx/datastore/core/SingleProcessDataStore$transformAndWrite$newData$1;->label:I

    invoke-interface {p1, v1, p0}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
