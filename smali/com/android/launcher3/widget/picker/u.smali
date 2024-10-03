.class public final synthetic Lcom/android/launcher3/widget/picker/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic g:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

.field public final synthetic h:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

.field public final synthetic i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/u;->g:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/u;->h:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iput-object p3, p0, Lcom/android/launcher3/widget/picker/u;->i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/u;->g:Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/u;->h:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/u;->i:Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->a(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/picker/WidgetsListHeader;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Landroid/view/View;)V

    return-void
.end method
