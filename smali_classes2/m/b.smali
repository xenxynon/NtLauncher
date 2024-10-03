.class public final synthetic Lm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

.field public final synthetic h:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/b;->g:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    iput-object p2, p0, Lm/b;->h:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm/b;->g:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    iget-object p0, p0, Lm/b;->h:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->b(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V

    return-void
.end method
