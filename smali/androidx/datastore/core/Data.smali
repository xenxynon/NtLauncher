.class final Landroidx/datastore/core/Data;
.super Landroidx/datastore/core/State;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/datastore/core/State<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/datastore/core/State;-><init>(Lkotlin/jvm/internal/i;)V

    iput-object p1, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    iput p2, p0, Landroidx/datastore/core/Data;->hashCode:I

    return-void
.end method


# virtual methods
.method public final checkHashCode()V
    .locals 2

    iget-object v0, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget p0, p0, Landroidx/datastore/core/Data;->hashCode:I

    if-ne v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Data in DataStore was mutated but DataStore is only compatible with Immutable types."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getHashCode()I
    .locals 0

    iget p0, p0, Landroidx/datastore/core/Data;->hashCode:I

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/datastore/core/Data;->value:Ljava/lang/Object;

    return-object p0
.end method
