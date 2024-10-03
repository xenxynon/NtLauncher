.class public final Landroidx/room/CoroutinesRoom$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/CoroutinesRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Landroidx/room/CoroutinesRoom$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Lkotlinx/coroutines/flow/e<",
            "TR;>;"
        }
    .end annotation

    const-string p0, "db"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "tableNames"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "callable"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/room/CoroutinesRoom$Companion$createFlow$1;-><init>(ZLandroidx/room/RoomDatabase;[Ljava/lang/String;Ljava/util/concurrent/Callable;Lq5/d;)V

    invoke-static {p0}, Lkotlinx/coroutines/flow/g;->p(Ly5/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public final execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lq5/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p5}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    check-cast p0, Landroidx/room/TransactionElement;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Lq5/e;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getTransactionDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getQueryDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p0

    :cond_3
    :goto_1
    move-object v2, p0

    new-instance p0, Li6/o;

    invoke-static {p5}, Lr5/b;->b(Lq5/d;)Lq5/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Li6/o;-><init>(Lq5/d;I)V

    invoke-virtual {p0}, Li6/o;->z()V

    sget-object v1, Li6/o1;->g:Li6/o1;

    const/4 v3, 0x0

    new-instance v4, Landroidx/room/CoroutinesRoom$Companion$execute$4$job$1;

    invoke-direct {v4, p4, p0, v0}, Landroidx/room/CoroutinesRoom$Companion$execute$4$job$1;-><init>(Ljava/util/concurrent/Callable;Li6/n;Lq5/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    move-result-object p1

    new-instance p2, Landroidx/room/CoroutinesRoom$Companion$execute$4$1;

    invoke-direct {p2, p3, p1}, Landroidx/room/CoroutinesRoom$Companion$execute$4$1;-><init>(Landroid/os/CancellationSignal;Li6/v1;)V

    invoke-interface {p0, p2}, Li6/n;->d(Ly5/l;)V

    invoke-virtual {p0}, Li6/o;->u()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    invoke-static {p5}, Lkotlin/coroutines/jvm/internal/h;->c(Lq5/d;)V

    :cond_4
    return-object p0
.end method

.method public final execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TR;>;",
            "Lq5/d<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p4}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    sget-object v0, Landroidx/room/TransactionElement;->Key:Landroidx/room/TransactionElement$Key;

    invoke-interface {p0, v0}, Lq5/g;->get(Lq5/g$c;)Lq5/g$b;

    move-result-object p0

    check-cast p0, Landroidx/room/TransactionElement;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/room/TransactionElement;->getTransactionDispatcher$room_ktx_release()Lq5/e;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getTransactionDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/room/CoroutinesRoomKt;->getQueryDispatcher(Landroidx/room/RoomDatabase;)Li6/i0;

    move-result-object p0

    :cond_3
    :goto_1
    new-instance p1, Landroidx/room/CoroutinesRoom$Companion$execute$2;

    invoke-direct {p1, p3, v0}, Landroidx/room/CoroutinesRoom$Companion$execute$2;-><init>(Ljava/util/concurrent/Callable;Lq5/d;)V

    invoke-static {p0, p1, p4}, Li6/h;->e(Lq5/g;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
