.class public final synthetic Lcom/android/launcher3/secondarydisplay/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lcom/android/launcher3/dragndrop/DragOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/secondarydisplay/a;->g:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;

    iput-object p2, p0, Lcom/android/launcher3/secondarydisplay/a;->h:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/secondarydisplay/a;->i:Lcom/android/launcher3/dragndrop/DragOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/secondarydisplay/a;->g:Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;

    iget-object v1, p0, Lcom/android/launcher3/secondarydisplay/a;->h:Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher3/secondarydisplay/a;->i:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;->a(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer$1;Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method
