.class public final synthetic Lcom/android/launcher3/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/WidgetCell;

.field public final synthetic h:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/WidgetCell;Lcom/android/launcher3/widget/NavigableAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/j;->g:Lcom/android/launcher3/widget/WidgetCell;

    iput-object p2, p0, Lcom/android/launcher3/widget/j;->h:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/launcher3/widget/j;->g:Lcom/android/launcher3/widget/WidgetCell;

    iget-object v2, v0, Lcom/android/launcher3/widget/j;->h:Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/widget/WidgetCell;->a(Lcom/android/launcher3/widget/WidgetCell;Lcom/android/launcher3/widget/NavigableAppWidgetHostView;Landroid/view/View;IIIIIIII)V

    return-void
.end method
