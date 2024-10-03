.class public final Lg6/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/g;
.implements Lg6/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg6/g<",
        "TT;>;",
        "Lg6/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lg6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lg6/g;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg6/g<",
            "+TT;>;I)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/p;->a:Lg6/g;

    iput p2, p0, Lg6/p;->b:I

    if-ltz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "count must be non-negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic b(Lg6/p;)I
    .locals 0

    iget p0, p0, Lg6/p;->b:I

    return p0
.end method

.method public static final synthetic c(Lg6/p;)Lg6/g;
    .locals 0

    iget-object p0, p0, Lg6/p;->a:Lg6/g;

    return-object p0
.end method


# virtual methods
.method public a(I)Lg6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lg6/g<",
            "TT;>;"
        }
    .end annotation

    iget v0, p0, Lg6/p;->b:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg6/p;

    iget-object p0, p0, Lg6/p;->a:Lg6/g;

    invoke-direct {v0, p0, p1}, Lg6/p;-><init>(Lg6/g;I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lg6/p$a;

    invoke-direct {v0, p0}, Lg6/p$a;-><init>(Lg6/p;)V

    return-object v0
.end method
