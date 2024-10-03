.class final Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/NTFolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/NTFolderAnimationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;->this$0:Lcom/android/launcher3/folder/NTFolderAnimationManager;

    invoke-static {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager;->access$getFolderAppPadding(Lcom/android/launcher3/folder/NTFolderAnimationManager;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/NTFolderAnimationManager$iconPaddingTop$2;->invoke()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
