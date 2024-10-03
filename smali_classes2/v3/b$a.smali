.class public final Lv3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/i;)V
    .locals 0

    invoke-direct {p0}, Lv3/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Context;)Lv3/b;
    .locals 2

    const-string p0, "context"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p2, Lv3/b;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0, p0}, Lv3/b;-><init>(IZLv3/a;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v1

    invoke-virtual {v1}, Lo3/b;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lo3/b;->l(Landroid/content/Context;)Lv3/a;

    move-result-object p0

    :goto_0
    new-instance p2, Lv3/b;

    invoke-direct {p2, p1, v1, p0}, Lv3/b;-><init>(IZLv3/a;)V

    :goto_1
    return-object p2
.end method
