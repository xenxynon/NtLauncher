.class public final synthetic Lcom/android/launcher3/widget/picker/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

.field public final synthetic h:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

.field public final synthetic i:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/x;->g:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/x;->h:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/x;->i:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/x;->g:Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/x;->h:Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/x;->i:Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;->a(Lcom/android/launcher3/widget/picker/WidgetsTwoPaneSheet$3;Lcom/android/launcher3/widget/picker/WidgetsRowViewHolder;Lcom/android/launcher3/widget/model/WidgetsListContentEntry;Landroid/util/Pair;)V

    return-void
.end method
