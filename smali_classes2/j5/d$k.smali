.class public Lj5/d$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "k"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lj5/d$g<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lj5/d;


# direct methods
.method protected constructor <init>(Lj5/d;)V
    .locals 0

    iput-object p1, p0, Lj5/d$k;->b:Lj5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lj5/d$k;->a:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public a(Lj5/d$g;ILj5/d$j;)Lj5/d$j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/d$g<",
            "TK;TV;>;I",
            "Lj5/d$j<",
            "TK;TV;>;)",
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lj5/d$k;->b:Lj5/d;

    invoke-static {v0}, Lj5/d;->b(Lj5/d;)Lj5/d$l;

    move-result-object v0

    sget-object v1, Lj5/d$l;->h:Lj5/d$l;

    if-ne v0, v1, :cond_0

    new-instance v0, Lj5/d$r;

    iget-object p0, p0, Lj5/d$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p0}, Lj5/d$r;-><init>(Lj5/d$g;ILj5/d$j;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    :cond_0
    new-instance v0, Lj5/d$o;

    iget-object p0, p0, Lj5/d$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, p3, p0}, Lj5/d$o;-><init>(Lj5/d$g;ILj5/d$j;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method public b()Lj5/d$j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/d$j<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lj5/d$k;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p0

    check-cast p0, Lj5/d$j;

    return-object p0
.end method
