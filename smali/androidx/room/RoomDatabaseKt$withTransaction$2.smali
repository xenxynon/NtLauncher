.class final Landroidx/room/RoomDatabaseKt$withTransaction$2;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Ly5/l;Lq5/d;)Ljava/lang/Object;
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
        "-TR;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.room.RoomDatabaseKt$withTransaction$2"
    f = "RoomDatabase.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "Lq5/d<",
            "-TR;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_withTransaction:Landroidx/room/RoomDatabase;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/room/RoomDatabase;Ly5/l;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Ly5/l<",
            "-",
            "Lq5/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Landroidx/room/RoomDatabaseKt$withTransaction$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$block:Ly5/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 2
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

    new-instance v0, Landroidx/room/RoomDatabaseKt$withTransaction$2;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$block:Ly5/l;

    invoke-direct {v0, v1, p0, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$2;-><init>(Landroidx/room/RoomDatabase;Ly5/l;Lq5/d;)V

    iput-object p1, v0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$2;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabaseKt$withTransaction$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabaseKt$withTransaction$2;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroidx/room/TransactionElement;

    :try_start_0
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->L$0:Ljava/lang/Object;

    check-cast p1, Li6/m0;

    invoke-interface {p1}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p1

    sget-object v1, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p1, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/room/TransactionElement;

    invoke-virtual {p1}, Landroidx/room/TransactionElement;->acquire()V

    :try_start_1
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$block:Ly5/l;

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->label:I

    invoke-interface {v1, p0}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    :try_start_3
    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v0}, Landroidx/room/TransactionElement;->release()V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    :try_start_5
    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$withTransaction$2;->$this_withTransaction:Landroidx/room/RoomDatabase;

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :catchall_3
    move-exception p0

    :goto_2
    invoke-virtual {p1}, Landroidx/room/TransactionElement;->release()V

    throw p0
.end method
