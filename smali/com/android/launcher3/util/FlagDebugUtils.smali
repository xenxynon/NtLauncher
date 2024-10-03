.class public final Lcom/android/launcher3/util/FlagDebugUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/FlagDebugUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/FlagDebugUtils;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlagDebugUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagDebugUtils;->INSTANCE:Lcom/android/launcher3/util/FlagDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appendFlag(Ljava/util/StringJoiner;IILjava/lang/String;)V
    .locals 1

    const-string v0, "str"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flagName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    return-void
.end method
