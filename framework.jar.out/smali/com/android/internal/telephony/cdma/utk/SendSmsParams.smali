.class Lcom/android/internal/telephony/cdma/utk/SendSmsParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field smsPdu:[B

.field textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/TextMessage;[B)V
    .locals 0
    .parameter "cmdDet"
    .parameter "textMsg"
    .parameter "smsPdu"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 182
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    .line 183
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->smsPdu:[B

    .line 184
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SendSmsParams;->textMsg:Lcom/android/internal/telephony/cdma/utk/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cdma/utk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
