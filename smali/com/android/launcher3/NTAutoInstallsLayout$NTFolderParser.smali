.class public Lcom/android/launcher3/NTAutoInstallsLayout$NTFolderParser;
.super Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/NTAutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NTFolderParser"
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

    iput-object p1, p0, Lcom/android/launcher3/NTAutoInstallsLayout$NTFolderParser;->this$0:Lcom/android/launcher3/NTAutoInstallsLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method

.method private final regularToValidFolderType(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lh6/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_1
    move v1, v0

    goto :goto_4

    :cond_2
    :goto_2
    const/4 v1, 0x2

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    move v1, p1

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_6

    :cond_5
    const/4 v1, 0x3

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    move v0, p1

    :goto_6
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_8
    return p1
.end method

.method private final regularToValidSpan(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lh6/l;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method protected parseCustomAttr(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "parser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insertValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanX"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/NTAutoInstallsLayout$NTFolderParser;->regularToValidSpan(Ljava/lang/String;)I

    move-result v1

    const-string v2, "spanY"

    invoke-static {p1, v2}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/NTAutoInstallsLayout$NTFolderParser;->regularToValidSpan(Ljava/lang/String;)I

    move-result v3

    const-string v4, "folderType"

    invoke-static {p1, v4}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout$NTFolderParser;->regularToValidFolderType(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
