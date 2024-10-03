.class final Lkotlinx/coroutines/internal/v$a;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/v;->a(Ly5/l;Ljava/lang/Object;Lq5/g;)Ly5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Throwable;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "TE;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic i:Lq5/g;


# direct methods
.method constructor <init>(Ly5/l;Ljava/lang/Object;Lq5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly5/l<",
            "-TE;",
            "Ln5/t;",
            ">;TE;",
            "Lq5/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/v$a;->g:Ly5/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/v$a;->h:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/v$a;->i:Lq5/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/v$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lkotlinx/coroutines/internal/v$a;->g:Ly5/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/v$a;->h:Ljava/lang/Object;

    iget-object p0, p0, Lkotlinx/coroutines/internal/v$a;->i:Lq5/g;

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/internal/v;->b(Ly5/l;Ljava/lang/Object;Lq5/g;)V

    return-void
.end method
