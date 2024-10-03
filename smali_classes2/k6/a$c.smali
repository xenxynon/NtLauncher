.class final Lk6/a$c;
.super Lk6/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lk6/a$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final l:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TE;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li6/n;ILy5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/n<",
            "Ljava/lang/Object;",
            ">;I",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lk6/a$b;-><init>(Li6/n;I)V

    iput-object p3, p0, Lk6/a$c;->l:Ly5/l;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Ly5/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ly5/l<",
            "Ljava/lang/Throwable;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk6/a$c;->l:Ly5/l;

    iget-object p0, p0, Lk6/a$b;->j:Li6/n;

    invoke-interface {p0}, Lq5/d;->getContext()Lq5/g;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/internal/v;->a(Ly5/l;Ljava/lang/Object;Lq5/g;)Ly5/l;

    move-result-object p0

    return-object p0
.end method
