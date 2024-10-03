.class public final synthetic Le/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

.field public final synthetic h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

.field public final synthetic i:I

.field public final synthetic j:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/j;->g:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iput-object p2, p0, Le/j;->h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iput p3, p0, Le/j;->i:I

    iput-object p4, p0, Le/j;->j:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/j;->g:Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;

    iget-object v1, p0, Le/j;->h:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, p0, Le/j;->i:I

    iget-object p0, p0, Le/j;->j:[I

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;->j(Lcom/android/launcher3/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/android/launcher3/model/data/WorkspaceItemInfo;I[I)V

    return-void
.end method
