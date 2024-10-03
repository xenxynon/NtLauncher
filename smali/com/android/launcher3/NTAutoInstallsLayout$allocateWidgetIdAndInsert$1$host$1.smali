.class final Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;
.super Lkotlin/jvm/internal/o;
.source "SourceFile"

# interfaces
.implements Ly5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/NTAutoInstallsLayout;->allocateWidgetIdAndInsert(Landroid/content/ComponentName;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/o;",
        "Ly5/l<",
        "Ljava/lang/Integer;",
        "Ln5/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;

    invoke-direct {v0}, Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;->INSTANCE:Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/NTAutoInstallsLayout$allocateWidgetIdAndInsert$1$host$1;->invoke(I)V

    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 0

    return-void
.end method
