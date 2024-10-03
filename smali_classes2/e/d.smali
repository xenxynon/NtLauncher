.class public final synthetic Le/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iput-object p2, p0, Le/d;->h:Landroid/view/View;

    iput-object p3, p0, Le/d;->i:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Le/d;->g:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v1, p0, Le/d;->h:Landroid/view/View;

    iget-object p0, p0, Le/d;->i:Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->h(Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;Landroid/view/View;Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
