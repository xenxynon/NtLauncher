.class Lj5/d$n$a;
.super Lj5/d$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/d$n;->g(ILjava/lang/Object;Lj5/d$p;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj5/d<",
        "TK;TV;>.f;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:I

.field final synthetic d:Lj5/d$j;

.field final synthetic e:I

.field final synthetic f:Lj5/d$n;


# direct methods
.method constructor <init>(Lj5/d$n;Ljava/lang/Object;ILj5/d$j;I)V
    .locals 0

    iput-object p1, p0, Lj5/d$n$a;->f:Lj5/d$n;

    iput-object p2, p0, Lj5/d$n$a;->b:Ljava/lang/Object;

    iput p3, p0, Lj5/d$n$a;->c:I

    iput-object p4, p0, Lj5/d$n$a;->d:Lj5/d$j;

    iput p5, p0, Lj5/d$n$a;->e:I

    iget-object p1, p1, Lj5/d$n;->l:Lj5/d;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lj5/d$f;-><init>(Lj5/d;Lj5/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    new-instance v0, Lj5/d$g;

    iget-object v1, p0, Lj5/d$n$a;->b:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lj5/d$g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lj5/d$n$a;->f:Lj5/d$n;

    invoke-static {p1}, Lj5/d$n;->b(Lj5/d$n;)Lj5/d$k;

    move-result-object p1

    iget v1, p0, Lj5/d$n$a;->c:I

    iget-object v2, p0, Lj5/d$n$a;->d:Lj5/d$j;

    invoke-virtual {p1, v0, v1, v2}, Lj5/d$k;->a(Lj5/d$g;ILj5/d$j;)Lj5/d$j;

    move-result-object p1

    iget-object v0, p0, Lj5/d$n$a;->f:Lj5/d$n;

    invoke-static {v0}, Lj5/d$n;->c(Lj5/d$n;)[Lj5/d$j;

    move-result-object v0

    iget v1, p0, Lj5/d$n$a;->e:I

    aput-object p1, v0, v1

    iget-object p0, p0, Lj5/d$n$a;->f:Lj5/d$n;

    invoke-static {p0}, Lj5/d$n;->a(Lj5/d$n;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lj5/d$n;->d(Lj5/d$n;I)V

    return-void
.end method
