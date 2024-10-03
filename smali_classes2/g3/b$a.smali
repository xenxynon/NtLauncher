.class public final Lg3/b$a;
.super Lcom/nothing/cardhost/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic q:Lg3/b;


# direct methods
.method public constructor <init>(Lg3/b;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg3/b$a;->q:Lg3/b;

    const/16 v3, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/nothing/cardhost/d;-><init>(Landroid/content/Context;ILw1/a;ILkotlin/jvm/internal/i;)V

    return-void
.end method


# virtual methods
.method public G()V
    .locals 1

    sget-object v0, Lg2/i;->a:Lg2/i;

    invoke-virtual {v0, p0}, Lg2/i;->N(Lg2/i$b;)V

    invoke-virtual {p0}, Lg2/a;->h()V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public v(Landroid/content/Context;ILcom/nothing/cardservice/CardWidgetMetaInfo;Z)Lcom/nothing/cardhost/e;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lg3/b$b;

    iget-object p0, p0, Lg3/b$a;->q:Lg3/b;

    invoke-direct {p1, p0}, Lg3/b$b;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
