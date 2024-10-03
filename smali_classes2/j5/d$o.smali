.class final Lj5/d$o;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"

# interfaces
.implements Lj5/d$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference<",
        "Lj5/d$g<",
        "TK;TV;>;>;",
        "Lj5/d$j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lj5/d$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/d$g;ILj5/d$j;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d$g<",
            "TK;TV;>;I",
            "Lj5/d$j<",
            "TK;TV;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lj5/d$g<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput p2, p0, Lj5/d$o;->a:I

    iput-object p3, p0, Lj5/d$o;->b:Lj5/d$j;

    return-void
.end method


# virtual methods
.method public a()Lj5/d$j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lj5/d$o;->b:Lj5/d$j;

    return-object p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lj5/d$o;->a:I

    return p0
.end method

.method public bridge synthetic get()Lj5/d$g;
    .locals 0

    invoke-super {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj5/d$g;

    return-object p0
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->enqueue()Z

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->clear()V

    return-void
.end method
