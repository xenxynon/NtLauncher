.class final Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabaseKt;->acquireTransactionThread(Ljava/util/concurrent/Executor;Li6/v1;Lq5/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $continuation:Li6/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/n<",
            "Lq5/e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $controlJob:Li6/v1;


# direct methods
.method constructor <init>(Li6/n;Li6/v1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "-",
            "Lq5/e;",
            ">;",
            "Li6/v1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Li6/n;

    iput-object p2, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Li6/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;

    iget-object v1, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$continuation:Li6/n;

    iget-object p0, p0, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2;->$controlJob:Li6/v1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroidx/room/RoomDatabaseKt$acquireTransactionThread$2$2$1;-><init>(Li6/n;Li6/v1;Lq5/d;)V

    const/4 p0, 0x1

    invoke-static {v2, v0, p0, v2}, Li6/h;->d(Lq5/g;Ly5/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
