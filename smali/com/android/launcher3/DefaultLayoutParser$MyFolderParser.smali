.class Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;
.super Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DefaultLayoutParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFolderParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const-string v0, "folderItems"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Lcom/android/launcher3/AutoInstallsLayout$SourceResources;

    invoke-interface {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0
.end method
