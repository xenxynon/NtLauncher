.class public final Lr4/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/a;
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

    invoke-direct {p0}, Lr4/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lv3/a;)Lr4/a;
    .locals 7

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x75e9028a

    if-eq v0, v1, :cond_4

    const v1, -0x546f7b16

    if-eq v0, v1, :cond_2

    const v1, 0x439b41e4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "THEMED_ICONS_NOTHING"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p3}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v1

    const p0, 0x7f120138

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lr4/b;->g:Lr4/b;

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->u()Z

    move-result v6

    new-instance p0, Lr4/a;

    const p1, 0x7f080300

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0802f9

    const-string p1, "getString(IconPackDispla\u2026DISPLAY_NAME_NOTHING_RES)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lr4/a;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Lr4/b;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "SYSTEM_ICONS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v1

    const p0, 0x7f120134

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lr4/b;->g:Lr4/b;

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->w()Z

    move-result v6

    new-instance p0, Lr4/a;

    const p1, 0x7f0802f8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0802f9

    const-string p1, "getString(IconPackDispla\u2026M_ICONS_DISPLAY_NAME_RES)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lr4/a;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Lr4/b;Z)V

    goto :goto_0

    :cond_4
    const-string v0, "THEMED_ICONS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Lv3/a;->i()Ljava/lang/String;

    move-result-object v1

    const p0, 0x7f120136

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lr4/b;->g:Lr4/b;

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/b;->r()Z

    move-result v6

    new-instance p0, Lr4/a;

    const p1, 0x7f0802ff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0802f9

    const-string p1, "getString(IconPackDispla\u2026S_DISPLAY_NAME_COLOR_RES)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lr4/a;-><init>(Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;Lr4/b;Z)V

    :cond_6
    :goto_0
    return-object p0
.end method
