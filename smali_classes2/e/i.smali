.class public final synthetic Le/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic h:Lcom/android/launcher3/model/data/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Le/i;->h:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/i;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object p0, p0, Le/i;->h:Lcom/android/launcher3/model/data/FolderInfo;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
