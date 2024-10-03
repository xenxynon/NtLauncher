.class public final synthetic Lcom/android/quickstep/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic h:Lcom/android/launcher3/model/data/FolderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/b;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Lcom/android/quickstep/util/b;->h:Lcom/android/launcher3/model/data/FolderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/b;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object p0, p0, Lcom/android/quickstep/util/b;->h:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/AppPairsController;->c(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Lcom/android/launcher3/model/data/FolderInfo;)V

    return-void
.end method
