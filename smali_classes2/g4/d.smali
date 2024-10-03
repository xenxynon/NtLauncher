.class public interface abstract Lg4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "select * from HiddenApp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg4/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()Lkotlinx/coroutines/flow/e;
    .annotation build Landroidx/room/Query;
        value = "select * from HiddenApp"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/util/List<",
            "Lg4/c;",
            ">;>;"
        }
    .end annotation
.end method

.method public varargs abstract c([Lg4/c;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public varargs abstract d([Lg4/c;)V
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract deleteAll()V
    .annotation build Landroidx/room/Query;
        value = "delete from HiddenApp"
    .end annotation
.end method
