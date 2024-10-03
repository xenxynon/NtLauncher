.class public final Lx1/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Ln5/e;

.field private final b:Ln5/e;

.field final synthetic c:Lx1/p;


# direct methods
.method public constructor <init>(Lx1/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx1/p$b;->c:Lx1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx1/p$b$a;

    invoke-direct {v0, p1}, Lx1/p$b$a;-><init>(Lx1/p;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lx1/p$b;->a:Ln5/e;

    new-instance v0, Lx1/p$b$b;

    invoke-direct {v0, p1}, Lx1/p$b$b;-><init>(Lx1/p;)V

    invoke-static {v0}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p1

    iput-object p1, p0, Lx1/p$b;->b:Ln5/e;

    return-void
.end method

.method private final b()Lx1/p$a;
    .locals 0

    iget-object p0, p0, Lx1/p$b;->a:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/p$a;

    return-object p0
.end method

.method private final c()Lx1/p$a;
    .locals 0

    iget-object p0, p0, Lx1/p$b;->b:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/p$a;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lx1/p$a;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lx1/p$b;->b()Lx1/p$a;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lx1/p$b;->c()Lx1/p$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method
