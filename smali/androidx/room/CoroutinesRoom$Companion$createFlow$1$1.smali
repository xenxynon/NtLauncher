.class final Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Ly5/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/CoroutinesRoom$Companion$createFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "-",
        "Ln5/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1"
    f = "CoroutinesRoom.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$flow:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $db:Landroidx/room/RoomDatabase;

.field final synthetic $inTransaction:Z

.field final synthetic $tableNames:[Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLandroidx/room/RoomDatabase;Lkotlinx/coroutines/flow/f;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lq5/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/room/RoomDatabase;",
            "Lkotlinx/coroutines/flow/f<",
            "TR;>;[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lq5/d<",
            "-",
            "Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$inTransaction:Z

    iput-object p2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iput-object p3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/f;

    iput-object p4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$callable:Ljava/util/concurrent/Callable;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILq5/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lq5/d;)Lq5/d;
    .locals 8
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

    new-instance v7, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;

    iget-boolean v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$inTransaction:Z

    iget-object v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v3, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/f;

    iget-object v4, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    iget-object v5, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$callable:Ljava/util/concurrent/Callable;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;-><init>(ZLandroidx/room/RoomDatabase;Lkotlinx/coroutines/flow/f;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lq5/d;)V

    iput-object p1, v7, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    return-object v7
.end method

.method public final invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/m0;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->create(Ljava/lang/Object;Lq5/d;)Lq5/d;

    move-result-object p0

    check-cast p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-virtual {p0, p1}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li6/m0;

    check-cast p2, Lq5/d;

    invoke-virtual {p0, p1, p2}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->invoke(Li6/m0;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Li6/m0;

    const/4 p1, -0x1

    const/4 v1, 0x6

    const/4 v4, 0x0

    invoke-static {p1, v4, v4, v1, v4}, Lk6/i;->b(ILk6/e;Ly5/l;ILjava/lang/Object;)Lk6/f;

    move-result-object v8

    new-instance v7, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$tableNames:[Ljava/lang/String;

    invoke-direct {v7, p1, v8}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;-><init>([Ljava/lang/String;Lk6/f;)V

    sget-object p1, Ln5/t;->a:Ln5/t;

    invoke-interface {v8, p1}, Lk6/z;->B(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Li6/m0;->getCoroutineContext()Lq5/g;

    move-result-object p1

    sget-object v1, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p1, v1}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p1

    check-cast p1, Landroidx/room/TransactionElement;

    if-nez p1, :cond_2

    move-object p1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Lq5/e;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$inTransaction:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getTransactionDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getQueryDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p1

    :cond_4
    :goto_1
    const/4 v1, 0x0

    const/4 v5, 0x7

    invoke-static {v1, v4, v4, v5, v4}, Lk6/i;->b(ILk6/e;Ly5/l;ILjava/lang/Object;)Lk6/f;

    move-result-object v1

    const/4 v12, 0x0

    new-instance v13, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;

    iget-object v6, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$db:Landroidx/room/RoomDatabase;

    iget-object v9, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$callable:Ljava/util/concurrent/Callable;

    const/4 v11, 0x0

    move-object v5, v13

    move-object v10, v1

    invoke-direct/range {v5 .. v11}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$1;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1$observer$1;Lk6/f;Ljava/util/concurrent/Callable;Lk6/f;Lq5/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    iget-object p1, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->$$this$flow:Lkotlinx/coroutines/flow/f;

    iput v2, p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/g;->l(Lkotlinx/coroutines/flow/f;Lk6/v;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
