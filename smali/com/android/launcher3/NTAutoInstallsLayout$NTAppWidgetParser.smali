.class public Lcom/android/launcher3/NTAutoInstallsLayout$NTAppWidgetParser;
.super Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/NTAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NTAppWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/NTAutoInstallsLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/NTAutoInstallsLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/NTAutoInstallsLayout$NTAppWidgetParser;->this$0:Lcom/android/launcher3/NTAutoInstallsLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

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

    invoke-static {p1, p0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/launcher3/NTAutoInstallsLayout$NTAppWidgetParser;->this$0:Lcom/android/launcher3/NTAutoInstallsLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout;->confirmComponentValid(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/NTAutoInstallsLayout$NTAppWidgetParser;->this$0:Lcom/android/launcher3/NTAutoInstallsLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/NTAutoInstallsLayout;->allocateWidgetIdAndInsert(Landroid/content/ComponentName;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/NTAutoInstallsLayout$NTAppWidgetParser;->this$0:Lcom/android/launcher3/NTAutoInstallsLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout;->mapToOldWidgetIfNeed(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
