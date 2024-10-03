.class public final Lz2/d$a;
.super Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lz2/d;


# direct methods
.method public constructor <init>(Lz2/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lz2/d$a;->a:Lz2/d;

    invoke-direct {p0, p1}, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;-><init>(Lcom/android/launcher3/DefaultLayoutParser;)V

    return-void
.end method


# virtual methods
.method protected parseCustomAttr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)V
    .locals 3

    const-string p0, "parser"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "insertValues"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "itemType"

    invoke-static {p1, p0}, Lz2/d;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lh6/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    return-void
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "cn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lz2/d$a;->a:Lz2/d;

    invoke-static {v0, p1}, Lz2/d;->c(Lz2/d;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lz2/d$a;->a:Lz2/d;

    invoke-static {p0, v0}, Lz2/d;->b(Lz2/d;Landroid/content/ComponentName;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lz2/d$a;->a:Lz2/d;

    invoke-static {v0, p1}, Lz2/d;->e(Lz2/d;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/DefaultLayoutParser$AppWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
