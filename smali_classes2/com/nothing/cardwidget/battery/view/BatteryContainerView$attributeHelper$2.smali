.class final Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nothing/cardwidget/battery/view/BatteryContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/a<",
        "Lcom/nothing/cardwidget/battery/AttributeHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;->INSTANCE:Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nothing/cardwidget/battery/AttributeHelper;
    .locals 0

    new-instance p0, Lcom/nothing/cardwidget/battery/AttributeHelper;

    invoke-direct {p0}, Lcom/nothing/cardwidget/battery/AttributeHelper;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/cardwidget/battery/view/BatteryContainerView$attributeHelper$2;->invoke()Lcom/nothing/cardwidget/battery/AttributeHelper;

    move-result-object p0

    return-object p0
.end method
