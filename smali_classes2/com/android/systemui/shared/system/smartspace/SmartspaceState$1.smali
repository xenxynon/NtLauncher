.class final synthetic Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/system/smartspace/SmartspaceState;-><init>(Landroid/os/Parcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;->INSTANCE:Lcom/android/systemui/shared/system/smartspace/SmartspaceState$1;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-class v0, Lx5/a;

    const-string v1, "javaClass"

    const-string v2, "getJavaClass(Ljava/lang/Object;)Ljava/lang/Class;"

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lkotlin/jvm/internal/t;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method